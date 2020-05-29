package org.example.twods.configs.cloudComputingConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.util.HashMap;

@Configuration
@PropertySource({"classpath:db-conf.properties",
                 "classpath:hibernate-conf.properties"})
@EnableJpaRepositories(
        basePackages = "org.example.twods.repositories.cloudComputingRepo",
        entityManagerFactoryRef = "cloudCompEntityManager",
        transactionManagerRef = "cloudCompTransactionManager"
)
public class CloudComputingConfig {
    @Autowired
    Environment env;

    @Bean
    @Primary
    public LocalContainerEntityManagerFactoryBean cloudCompEntityManager() {
        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
        em.setDataSource(cloudCompDataSource());
        em.setPackagesToScan(new String[] {"org.example.twods.entities.cloudComputing"});

        HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
        em.setJpaVendorAdapter(vendorAdapter);

        HashMap<String, Object> prop = new HashMap<>();
        prop.put("hibernate.ddl-auto", env.getProperty("hibernate.ddl-auto"));
        prop.put("hibernate.dialect", env.getProperty("hibernate.dialect"));
        prop.put("hibernate.show_sql", env.getProperty("hibernate.show_sql"));
        prop.put("hibernate.jdbc.lob.non_contextual_creation", env.getProperty("hibernate.jdbc.lob.non_contextual_creation"));
        em.setJpaPropertyMap(prop);

        return em;
    }

    @Bean
    @Primary
    public DataSource cloudCompDataSource() {
        DriverManagerDataSource ds = new DriverManagerDataSource();
        ds.setDriverClassName(checkIsNull(env.getProperty("db.cloudComp.datasource.driverClassName")));
        ds.setUrl(checkIsNull(env.getProperty("db.cloudComp.datasource.url")));
        ds.setUsername(checkIsNull(env.getProperty("db.cloudComp.datasource.username")));
        ds.setPassword(env.getProperty("db.cloudComp.datasource.password"));
        return ds;
    }

    private static String checkIsNull(String property) {
        if(property == null) {
            throw new NullPointerException();
        }
        return property;
    }

    @Bean
    @Primary
    public PlatformTransactionManager cloudCompTransactionManager() {
        JpaTransactionManager tm = new JpaTransactionManager();
        tm.setEntityManagerFactory(cloudCompEntityManager().getObject());
        return tm;
    }
}

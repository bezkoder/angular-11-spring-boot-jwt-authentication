package com.bezkoder.springjwt.newspringbootserver.repositories;

import com.bezkoder.springjwt.newspringbootserver.models.ERole;
import com.bezkoder.springjwt.newspringbootserver.models.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
    Optional<Role> findByName(ERole name);
}

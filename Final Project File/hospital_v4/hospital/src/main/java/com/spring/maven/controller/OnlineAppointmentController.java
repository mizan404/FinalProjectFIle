/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.maven.controller;

import com.spring.maven.controller.impl.IOnlineAppointmentController;
import com.spring.maven.model.OnlineAppointment;
import com.spring.maven.service.impl.IOnlineAppointmentService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author mohdm
 */
@RestController
@RequestMapping(value = "/onlineappointment")
public class OnlineAppointmentController implements IOnlineAppointmentController {

    @Autowired
    IOnlineAppointmentService onlineAppointmentService;

    @Override
    public ModelAndView create() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        onlineAppointmentService.save(request);
        return new ModelAndView("onlineAppointment/appointmentForm");

    }

    @Override
    public ModelAndView edit(int id) {
        return null;
    }

    @Override
    public ModelAndView update(HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ModelAndView delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<OnlineAppointment> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public OnlineAppointment getByNid(int patient_nid) {
        return onlineAppointmentService.getByNid(patient_nid);
    }
}
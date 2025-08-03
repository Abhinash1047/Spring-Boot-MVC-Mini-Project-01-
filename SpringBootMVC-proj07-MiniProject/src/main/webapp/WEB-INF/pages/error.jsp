<%@ page isELIgnored="false"%>

<h2 style="text-align: center; color: #2c3e50; font-family: Arial, sans-serif;">Error Details</h2>

<table border="1" align="center" cellpadding="10" cellspacing="0" 
       style="border-collapse: collapse; width: 60%; font-family: Arial, sans-serif; box-shadow: 0 0 10px rgba(0,0,0,0.1);">
    <tr style="background-color: #34495e; color: white;">
        <th style="text-align: left;">Field</th>
        <th style="text-align: left;">Value</th>
    </tr>
    <tr style="background-color: #f9f9f9;">
        <td><strong>Status</strong></td>
        <td>${status}</td>
    </tr>
    <tr>
        <td><strong>Timestamp</strong></td>
        <td>${timestamp}</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
        <td><strong>Message</strong></td>
        <td>${message}</td>
    </tr>
    <tr>
        <td><strong>Type</strong></td>
        <td>${type}</td>
    </tr>
    <tr style="background-color: #f9f9f9;">
        <td>

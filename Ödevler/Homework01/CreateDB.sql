CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15),
    Address VARCHAR(100)
);
CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Phone VARCHAR(15)
);
CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDateTime DATETIME,
    Description VARCHAR(200),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
CREATE TABLE Treatment (
    TreatmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    TreatmentDate DATETIME,
    Diagnosis VARCHAR(200),
    Prescription VARCHAR(200),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)
);
CREATE TABLE Bill (
    BillID INT PRIMARY KEY,
    PatientID INT,
    BillAmount DECIMAL(10, 2),
    BillDate DATE,
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);
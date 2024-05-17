CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    TableNumber INT,
    BookingDate DATE,
    BookingTime TIME,
    NumberOfGuests INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (TableNumber) REFERENCES Tables(TableNumber)
);
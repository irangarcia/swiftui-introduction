import SwiftUI

struct DatePickers: View {
    @State var birthDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2022)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        return formatter
    }

    var body: some View {
        VStack {
            Text("Selected date is:")
            Text("\(dateFormatter.string(from: birthDate))")
            
            DatePicker(
                "Birth Date",
                selection: $birthDate,
                in: startingDate...endingDate,
                displayedComponents: [.date, .hourAndMinute]
            )
            .datePickerStyle(
                //          .graphical
                //          .wheel
                .compact
            )
            .tint(.green)
        }
    }
}

#Preview {
    DatePickers()
}

# Expert System in CLIPS

This expert system was developed by establishing inference rules that relate multiple domains of knowledge. For this project, the chosen domains are tourist attractions in Argentina and user profiles. Building on previous work that modeled relationships between two domains, this system extends that approach by incorporating at least three domains, such as tourist attractions, user profiles, and potential recommendations, using frames in CLIPS. This process involved gathering relevant knowledge, constructing tables to organize domain relationships, extracting rules in natural language, and implementing the logic using CLIPS. The system's accuracy was evaluated through tests on various cases, with the results discussed in a brief report.

## Deliverables

- [Report]() as the foundation for the knowledge representation and system evaluation.
- A [table](https://docs.google.com/spreadsheets/d/1_ujz7D8HHt9qPDaz7yIIfvWOtCRi83mb/edit?usp=sharing&ouid=103481108306343193966&rtpof=true&sd=true) that organizes the structured concepts of the tourist guide system.
- The logical model implemented in **CLIPS**, along with the code, demonstrating the inference capabilities for the tourist guide of Argentina.

## Prerequisites

- Ensure you have CLIPS installed on your machine. You can download CLIPS from the [official website](http://www.clipsrules.net/).

## Running the System

To execute the expert system, follow these steps:

1. **Open CLIPS:** Launch CLIPS on your computer.

2. **Load the Files:** Use the following commands in the CLIPS environment to load the system files:
    ```clips
    (load "templates.clp")
    (load "data.clp")
    (load "rules.clp")
    ```

    - **`templates.clp`**: Defines the structure for facts used in the system.
    - **`data.clp`**: Contains the initial facts or data that the system will use.
    - **`rules.clp`**: Contains the set of rules that drive the expert system's logic.

3. **Modify the Profile in `data.clp`:** Before running the system, make sure to modify the relevant profile or facts within `data.clp` to suit your specific case. Open `data.clp` with a text editor and make the necessary changes.

4. **Run the System:** After loading the files, execute the following command in the CLIPS environment to start the expert system:
    ```clips
    (reset)
    (run)
    ```

5. **Analyze the Results:** The system will provide output based on the rules defined in `rules.clp` and the data provided in `data.clp`.

## Additional Information

For more details on using CLIPS or extending the system, refer to the [CLIPS User's Guide](http://www.clipsrules.net/Documentation.html).

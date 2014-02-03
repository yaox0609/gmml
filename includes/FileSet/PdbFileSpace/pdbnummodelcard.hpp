// Created by: Alireza Khatamian
// Modified by: Alireza Khatamian, Delaram Rahbarinia

#ifndef PDBNUMMODELCARD_HPP
#define PDBNUMMODELCARD_HPP

#include <string>
#include <sstream>
#include <iostream>

namespace PdbFileSpace
{
    class PdbNumModelCard
    {
        public:
            //////////////////////////////////////////////////////////
            //                       CONSTRUCTOR                    //
            //////////////////////////////////////////////////////////
            /*! \fn
              * Default constructor
              */
            PdbNumModelCard();
            /*! \fn
              * Constructor with required parameters
              * @param record_name
              * @param number_of_models
              */
            PdbNumModelCard(const std::string& record_name, int number_of_models);
            PdbNumModelCard(std::stringstream& stream_block);

            //////////////////////////////////////////////////////////
            //                         ACCESSOR                     //
            //////////////////////////////////////////////////////////
            /*! \fn
              * An accessor function in order to access to the record name in num model card
              * @return record_name_ attribute of the current object of this class
              */
            std::string GetRecordName();
            /*! \fn
              * An accessor function in order to access to the number of models in num model card
              * @return number_of_models_ attribute of the current object of this class
              */
            int GetNumberOfModels();

            //////////////////////////////////////////////////////////
            //                          MUTATOR                     //
            //////////////////////////////////////////////////////////
            /*! \fn
              * A mutator function in order to set the record name of the current object
              * Set the record_name_ attribute of the current num model card
              * @param record_name The record name of the current object
              */
            void SetRecordName(const std::string record_name);
            /*! \fn
              * A mutator function in order to set the number of models of the current object
              * Set the number_of_models_ attribute of the current num model card
              * @param number_of_models The number of_models of the current object
              */
            void SetNumberOfModels(int number_of_models);

            //////////////////////////////////////////////////////////
            //                        FUNCTIONS                     //
            //////////////////////////////////////////////////////////

            //////////////////////////////////////////////////////////
            //                      DISPLAY FUNCTION                //
            //////////////////////////////////////////////////////////
            void Print(std::ostream& out = std::cout);

        private:
            //////////////////////////////////////////////////////////
            //                        ATTRIBUTES                    //
            //////////////////////////////////////////////////////////
            std::string record_name_;
            int number_of_models_;

    };
}

#endif // PDBNUMMODELCARD_HPP

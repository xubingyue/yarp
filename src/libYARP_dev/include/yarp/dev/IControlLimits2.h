/*
 * Copyright (C) 2013 iCub Facility - Istituto Italiano di Tecnologia
 * Author:  Alberto Cardellino
 * email:   alberto.cardellino@iit.it
 * website: www.robotcub.org
 * Permission is granted to copy, distribute, and/or modify this program
 * under the terms of the GNU General Public License, version 2 or any
 * later version published by the Free Software Foundation.
 *
 * A copy of the license can be found at
 * http://www.robotcub.org/icub/license/gpl.txt
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
 * Public License for more details
 */

#include <yarp/dev/ControlBoardInterfaces.h>

#ifndef ICONTROL_LIMIT_V2_H_
#define ICONTROL_LIMIT_V2_H_

namespace yarp {
    namespace dev {
        class IControlLimits2;
        class IControlLimits2Raw;
    }
}

/**
 * @ingroup dev_iface_motor
 *
 * Interface for control devices, commands to get/set position and veloity limits
 */
class yarp::dev::IControlLimits2: yarp::dev::IControlLimits
{
public:
    /**
     * Destructor.
     */
    virtual ~IControlLimits2() {}

    using IControlLimits::setLimits;
    using IControlLimits::getLimits;

    /* Set the software speed limits for a particular axis, the behavior of the
     * control card when these limits are exceeded, depends on the implementation.
     * @param axis joint number
     * @param min the value of the lower limit
     * @param max the value of the upper limit
     * @return true or false on success or failure
     */
    virtual bool setVelLimits(int axis, double min, double max)=0;

    /* Get the software speed limits for a particular axis.
     * @param axis joint number
     * @param pointer to store the value of the lower limit
     * @param pointer to store the value of the upper limit
     * @return true if everything goes fine, false otherwise.
     */
    virtual bool getVelLimits(int axis, double *min, double *max)=0;
};


/**
 * @ingroup dev_iface_motor
 *
 * Interface for control devices, commands to get/set position and veloity limits
 * in encoder coordinates
 */
class yarp::dev::IControlLimits2Raw: yarp::dev::IControlLimitsRaw
{
public:
    /**
     * Destructor.
     */
    virtual ~IControlLimits2Raw() {}

    using IControlLimitsRaw::setLimitsRaw;
    using IControlLimitsRaw::getLimitsRaw;

    /* Set the software speed limits for a particular axis, the behavior of the
     * control card when these limits are exceeded, depends on the implementation.
     * @param axis joint number
     * @param min the value of the lower limit
     * @param max the value of the upper limit
     * @return true or false on success or failure
     */
    virtual bool setVelLimitsRaw(int axis, double min, double max)=0;

    /* Get the software speed limits for a particular axis.
     * @param axis joint number
     * @param pointer to store the value of the lower limit
     * @param pointer to store the value of the upper limit
     * @return true if everything goes fine, false otherwise.
     */
    virtual bool getVelLimitsRaw(int axis, double *min, double *max)=0;

};

#define VOCAB_VEL_LIMITS VOCAB4('v','l','i','m')
#endif /* ICONTROL_LIMIT_V2_H_ */
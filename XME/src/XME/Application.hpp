#pragma once
#include "Core.hpp"

namespace XME {

    class XME_API Application
    {
    public:
        Application();
        virtual ~Application();
        void Run();
        void Print();
    };
} //namespace XME
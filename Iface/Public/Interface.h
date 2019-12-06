#pragma once
#ifndef _INTERFACE_H_
#define _INTERFACE_H_

#ifndef INTERFACE_EXPORTS
	#define INTERFACE_API __declspec(dllimport)
#else
	#define INTERFACE_API __declspec(dllexport)
#endif

#ifdef __cplusplus
extern "C"
{
#endif // __cplusplus

INTERFACE_API int SharedThing(int X);

INTERFACE_API int DoSomething(int X);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // _INTERFACE_H_
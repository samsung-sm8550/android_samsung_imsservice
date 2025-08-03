.class public Lcom/sec/internal/imsphone/ServiceProfile;
.super Ljava/lang/Object;
.source "ServiceProfile.java"


# instance fields
.field private mPhoneId:I

.field private mRegistrationListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mServiceClass:I


# direct methods
.method public constructor <init>(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/sec/internal/imsphone/ServiceProfile;->mPhoneId:I

    .line 12
    iput p2, p0, Lcom/sec/internal/imsphone/ServiceProfile;->mServiceClass:I

    .line 13
    iput-object p3, p0, Lcom/sec/internal/imsphone/ServiceProfile;->mRegistrationListener:Lcom/android/ims/internal/IImsRegistrationListener;

    return-void
.end method


# virtual methods
.method public getPhoneId()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/sec/internal/imsphone/ServiceProfile;->mPhoneId:I

    return p0
.end method

.method public getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/imsphone/ServiceProfile;->mRegistrationListener:Lcom/android/ims/internal/IImsRegistrationListener;

    return-object p0
.end method

.method public getServiceClass()I
    .locals 0

    .line 21
    iget p0, p0, Lcom/sec/internal/imsphone/ServiceProfile;->mServiceClass:I

    return p0
.end method

.method public setRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/sec/internal/imsphone/ServiceProfile;->mRegistrationListener:Lcom/android/ims/internal/IImsRegistrationListener;

    return-void
.end method

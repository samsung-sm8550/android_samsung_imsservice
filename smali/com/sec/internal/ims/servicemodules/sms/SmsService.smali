.class public Lcom/sec/internal/ims/servicemodules/sms/SmsService;
.super Lcom/sec/ims/sms/ISmsService$Stub;
.source "SmsService.java"


# instance fields
.field private final mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sec/ims/sms/ISmsService$Stub;-><init>()V

    .line 24
    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    return-void
.end method


# virtual methods
.method public deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    return-void
.end method

.method public getSmsFallback(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->getSmsFallback(I)Z

    move-result p0

    return p0
.end method

.method public registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    return-void
.end method

.method public sendDeliverReport(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendDeliverReport(I[B)V

    return-void
.end method

.method public sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public sendSMSResponse(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendSMSResponse(ZI)V

    return-void
.end method

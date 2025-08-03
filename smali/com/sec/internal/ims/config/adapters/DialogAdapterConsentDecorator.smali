.class public Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;
.super Ljava/lang/Object;
.source "DialogAdapterConsentDecorator.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DialogAdapterConsentDecorator"


# instance fields
.field private final mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

.field private final mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    .line 38
    iput p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mPhoneId:I

    return-void
.end method

.method private getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 98
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 100
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->cleanup()V

    return-void
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 45
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->getOwnIdentity()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 47
    const-class p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x0

    .line 47
    invoke-static {p0, p4}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    move-result-object p0

    .line 49
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, v0

    move v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;-><init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 49
    invoke-virtual {p0, p1, v0, p4}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->sendEvent(ILjava/lang/Object;Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Could not obtain own identity! Ignoring user consent for EULA!"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p3
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p3

    .line 64
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->getOwnIdentity()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 66
    const-class p0, Lcom/sec/internal/ims/servicemodules/euc/EucModule;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x0

    .line 66
    invoke-static {p0, p4}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    move-result-object p0

    .line 68
    new-instance p5, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, p5

    move v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;-><init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 68
    invoke-virtual {p0, p1, p5, p4}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->sendEvent(ILjava/lang/Object;Lcom/sec/internal/ims/servicemodules/base/ModuleChannel$Listener;)V

    goto :goto_0

    .line 73
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Could not obtain own identity! Ignoring user consent for EULA!"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p3
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextCancel()Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapterConsentDecorator;->mDialogAdapter:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getNextCancel()Z

    move-result p0

    return p0
.end method

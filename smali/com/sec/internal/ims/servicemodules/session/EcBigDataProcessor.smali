.class public Lcom/sec/internal/ims/servicemodules/session/EcBigDataProcessor;
.super Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;
.source "EcBigDataProcessor.java"


# instance fields
.field private mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/session/SessionModule;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/EcBigDataProcessor;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    return-void
.end method


# virtual methods
.method protected getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/EcBigDataProcessor;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->getMessagingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method protected getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/EcBigDataProcessor;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method protected getMessageType(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)Ljava/lang/String;
    .locals 0

    .line 31
    const-string p0, "EC"

    return-object p0
.end method

.method protected getMessageTypeForILA(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    const-string p0, "REOS"

    return-object p0
.end method

.method protected isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected isWifiConnected()Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/EcBigDataProcessor;->mSessionModule:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->isWifiConnected()Z

    move-result p0

    return p0
.end method

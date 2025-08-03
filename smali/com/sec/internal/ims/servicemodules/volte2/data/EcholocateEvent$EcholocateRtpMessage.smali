.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# instance fields
.field delay:Ljava/lang/String;

.field dir:Ljava/lang/String;

.field id:Ljava/lang/String;

.field jitter:Ljava/lang/String;

.field lossrate:Ljava/lang/String;

.field measuredperiod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->dir:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->id:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->lossrate:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->delay:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->jitter:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->measuredperiod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDelay()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->delay:Ljava/lang/String;

    return-object p0
.end method

.method public getDir()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getJitter()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->jitter:Ljava/lang/String;

    return-object p0
.end method

.method public getLossrate()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->lossrate:Ljava/lang/String;

    return-object p0
.end method

.method public getMeasuredperiod()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->measuredperiod:Ljava/lang/String;

    return-object p0
.end method

.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;
.super Ljava/lang/Object;
.source "QuantumSecurityStatusEvent.java"


# instance fields
.field mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

.field mQtSessionId:Ljava/lang/String;

.field mSessionId:I


# direct methods
.method public constructor <init>(ILcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->mSessionId:I

    .line 16
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    .line 17
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->mQtSessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent$QuantumEvent;

    return-object p0
.end method

.method public getQtSessionId()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->mQtSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionId()I
    .locals 0

    .line 21
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/QuantumSecurityStatusEvent;->mSessionId:I

    return p0
.end method

.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# instance fields
.field private callId:Ljava/lang/String;

.field private callNumber:Ljava/lang/String;

.field private isEpdgCall:Z

.field private stateName:Ljava/lang/String;

.field private timerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->callNumber:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->timerName:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->stateName:Ljava/lang/String;

    .line 186
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->callId:Ljava/lang/String;

    .line 187
    iput-boolean p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->isEpdgCall:Z

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->callNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->stateName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimerName()Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->timerName:Ljava/lang/String;

    return-object p0
.end method

.method public isEpdgCall()Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;->isEpdgCall:Z

    return p0
.end method

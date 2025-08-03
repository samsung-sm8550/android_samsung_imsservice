.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# instance fields
.field private callId:Ljava/lang/String;

.field private callNumber:Ljava/lang/String;

.field private callState:Ljava/lang/String;

.field private cellId:Ljava/lang/String;

.field private networkBand:Ljava/lang/String;

.field private networkSignal:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->callNumber:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->callState:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->networkType:Ljava/lang/String;

    .line 149
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->networkBand:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->networkSignal:Ljava/lang/String;

    .line 151
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->callId:Ljava/lang/String;

    .line 152
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->time:Ljava/lang/String;

    .line 153
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->cellId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->callId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->callNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getCallState()Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->callState:Ljava/lang/String;

    return-object p0
.end method

.method public getCellId()Ljava/lang/String;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->cellId:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkBand()Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->networkBand:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->networkSignal:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->networkType:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->time:Ljava/lang/String;

    return-object p0
.end method

.method public setCallState(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->callState:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 137
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->time:Ljava/lang/String;

    return-void
.end method

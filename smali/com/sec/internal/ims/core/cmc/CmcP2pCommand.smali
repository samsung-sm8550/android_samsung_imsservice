.class public Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;
.super Ljava/lang/Object;
.source "CmcP2pCommand.java"


# instance fields
.field public mCmcSendTime:Ljava/lang/String;

.field public mEventType:I

.field public mMethod:Ljava/lang/String;

.field public mReason:I

.field public mSessionId:Ljava/lang/String;

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    .line 18
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    .line 20
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 22
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mReason:I

    .line 25
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->-$$Nest$fgetmEventType(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    .line 26
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->-$$Nest$fgetmSessionId(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->-$$Nest$fgetmState(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    .line 28
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->-$$Nest$fgetmMethod(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->-$$Nest$fgetmCmcSendTime(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->-$$Nest$fgetmReason(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mReason:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    .line 18
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    .line 20
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 22
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mReason:I

    .line 35
    :try_start_0
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    .line 36
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    .line 38
    const-string v0, "method"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mReason:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getBuilder()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;
    .locals 1

    .line 76
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public makeJsonP2pMessage()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    const-string v1, "event"

    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v1, "sid"

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v1, "state"

    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v1, "method"

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string/jumbo v1, "reason"

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mReason:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmcP2pCommand [mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCmcSendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mReason:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

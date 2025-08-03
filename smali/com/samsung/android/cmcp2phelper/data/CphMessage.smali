.class public Lcom/samsung/android/cmcp2phelper/data/CphMessage;
.super Ljava/lang/Object;
.source "CphMessage.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static SHIP_BUILD:Z


# instance fields
.field extraMessage:Ljava/lang/String;

.field isHotspotSupported:Z

.field mCmcVersion:D

.field mDeviceId:Ljava/lang/String;

.field mLineId:Ljava/lang/String;

.field mMessageUniqueNum:I

.field mMsgType:I

.field mResponderIP:Ljava/lang/String;

.field mResponderPort:I

.field message:Lorg/json/JSONObject;

.field sessionId:I

.field targetDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->SHIP_BUILD:Z

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/2.1.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 121
    iput-wide p2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 122
    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 124
    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    const/4 p1, 0x0

    .line 125
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    .line 126
    iput p6, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    return-void
.end method

.method public constructor <init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 111
    iput-wide p2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 112
    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 114
    iput-object p6, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    .line 115
    iput p7, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    .line 116
    iput p8, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    .line 133
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cphMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_resp_port"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 138
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->parseFromJson(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 140
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private makeJsonObject()V
    .locals 4

    .line 192
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    .line 194
    :try_start_0
    const-string v1, "cph_cmc_session_id"

    iget v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->sessionId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 195
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_message_id"

    iget v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_message_type"

    iget v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_version"

    iget-wide v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_device_id"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_line_id"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_hotspot_supported"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 202
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_resp_ip"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 205
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v2, "cph_cmc_resp_port"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->targetDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_target_device_id"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->targetDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->extraMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    const-string v1, "cph_cmc_extra_message"

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->extraMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 215
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method private parseFromJson(Lorg/json/JSONObject;)V
    .locals 8

    .line 146
    const-string v0, "cph_cmc_target_device_id"

    const-string v1, "cph_cmc_extra_message"

    const-string v2, "cph_cmc_resp_port"

    const-string v3, "cph_cmc_resp_ip"

    const-string v4, "cph_cmc_hotspot_supported"

    const-string v5, "cph_message_id"

    const-string v6, "cph_cmc_session_id"

    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->sessionId:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    .line 152
    :cond_1
    const-string v5, "cph_message_type"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    .line 153
    const-string v5, "cph_cmc_version"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mCmcVersion:D

    .line 154
    const-string v5, "cph_cmc_device_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    .line 155
    const-string v5, "cph_cmc_line_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 157
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->isHotspotSupported:Z

    .line 159
    :cond_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 160
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    .line 162
    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_4

    .line 163
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    .line 165
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v6, :cond_5

    .line 166
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->extraMessage:Ljava/lang/String;

    .line 168
    :cond_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v6, :cond_6

    .line 169
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->targetDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 172
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public getByte()[B
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->makeJsonObject()V

    .line 185
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    if-eqz p0, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraMessage()Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->extraMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getHotspotSupported()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->isHotspotSupported:Z

    return p0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mLineId:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageId()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMessageUniqueNum:I

    return p0
.end method

.method public getMsgType()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mMsgType:I

    return p0
.end method

.method public getResponderIP()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderIP:Ljava/lang/String;

    return-object p0
.end method

.method public getResponderPort()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->mResponderPort:I

    return p0
.end method

.method public getSessionId()I
    .locals 0

    .line 106
    iget p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->sessionId:I

    return p0
.end method

.method public getTargetDeviceId()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->targetDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setExtraMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 177
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->sessionId:I

    .line 178
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->targetDeviceId:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->extraMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->message:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 48
    sget-boolean v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->SHIP_BUILD:Z

    if-eqz v0, :cond_1

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v1, "cph_cmc_line_id"

    const-string/jumbo v2, "xxx"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p0
.end method

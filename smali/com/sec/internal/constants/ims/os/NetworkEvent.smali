.class public Lcom/sec/internal/constants/ims/os/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkEvent"


# instance fields
.field public csOutOfService:Z

.field public isDataRoaming:Z

.field public isDataStateConnected:Z

.field public isEpdgAvailable:Z

.field public isEpdgConnected:Z

.field public isPsOnlyReg:Z

.field public isVoiceRoaming:Z

.field public isVopsUpdated:Z

.field public isWifiConnected:Z

.field public network:I

.field public operatorNumeric:Ljava/lang/String;

.field public outOfService:Z

.field public voiceNetwork:I

.field public voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 58
    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    .line 62
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 63
    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    .line 67
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 68
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 69
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 10

    .line 110
    sget-object v6, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const/4 v8, 0x0

    const-string v9, "00101"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(IZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZZLjava/lang/String;ZZ)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 94
    iput p2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    .line 95
    iput-boolean p3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 96
    iput-boolean p5, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    .line 97
    iput-boolean p6, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 98
    iput-object p7, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 99
    iput-boolean p4, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    .line 100
    iput-boolean p8, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    .line 101
    iput-boolean p9, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 102
    iput-boolean p10, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    .line 103
    iput-object p11, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 104
    iput-boolean p12, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 105
    iput-boolean p13, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    return-void
.end method

.method public constructor <init>(IZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZLjava/lang/String;)V
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 117
    invoke-direct/range {v0 .. v13}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(IIZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 74
    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    iput v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    .line 75
    iget-object v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    .line 76
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 77
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    .line 78
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    .line 79
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    .line 80
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 81
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    .line 82
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 83
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    .line 84
    iget-object v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 85
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 86
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    return-void
.end method

.method public static blurNetworkType(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/16 v1, 0x10

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    return p0

    :cond_0
    :pswitch_0
    const/16 p0, 0xa

    return p0

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static buildNetworkEvent(IIIIZZZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkState;)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 18

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    .line 277
    :goto_1
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v3

    if-eqz v3, :cond_2

    move v8, v0

    goto :goto_2

    :cond_2
    move v8, v1

    .line 278
    :goto_2
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v6

    .line 279
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v9

    .line 280
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v17

    .line 281
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v10

    .line 282
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v15

    .line 283
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v11

    .line 284
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v16

    .line 286
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v3

    .line 288
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_3

    move/from16 v4, p2

    move/from16 v5, p3

    .line 291
    invoke-static {v3, v2, v8, v4, v5}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->is2GNetworkInCall(IZZII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 292
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v2

    move v7, v1

    move v5, v2

    goto :goto_3

    :cond_3
    move v7, v2

    move v5, v3

    .line 297
    :goto_3
    new-instance v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-object v4, v2

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-direct/range {v4 .. v17}, Lcom/sec/internal/constants/ims/os/NetworkEvent;-><init>(IIZZZZLcom/sec/internal/constants/ims/os/VoPsIndication;ZZZLjava/lang/String;ZZ)V

    move-object/from16 v3, p7

    .line 299
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->KEEP:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-eq v3, v4, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    return-object v2
.end method

.method private equalsInternal(Ljava/lang/Object;Z)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 144
    :cond_1
    instance-of v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    if-nez v2, :cond_2

    return v1

    .line 147
    :cond_2
    check-cast p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    .line 148
    iget v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v2}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v2

    iget v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    .line 151
    :cond_3
    iget v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    iget v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    if-eq v2, v3, :cond_4

    return v1

    .line 154
    :cond_4
    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 157
    :cond_5
    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 160
    :cond_6
    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 163
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v2, v3, :cond_8

    return v1

    .line 166
    :cond_8
    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 169
    :cond_9
    iget-boolean v2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    if-nez p2, :cond_c

    .line 173
    iget-boolean p2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eq p2, v2, :cond_b

    return v1

    .line 176
    :cond_b
    iget-boolean p2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    if-eq p2, v2, :cond_c

    return v1

    .line 180
    :cond_c
    iget-boolean p2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-eq p2, v2, :cond_d

    return v1

    .line 183
    :cond_d
    iget-object p2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 184
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    return v1

    .line 187
    :cond_e
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-ne p0, p1, :cond_f

    goto :goto_0

    :cond_f
    move v0, v1

    :goto_0
    return v0
.end method

.method private static is2GNetworkInCall(IZZII)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 307
    invoke-static {p3}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    if-eqz p4, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method


# virtual methods
.method public changedEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/String;
    .locals 5

    .line 192
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const-string v2, "=>"

    const-string v3, "), "

    const-string v4, "Changed Event: "

    if-eq v0, v1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DataRoaming("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v0, v1, :cond_1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VoiceRoaming("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    :cond_1
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v0

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v1}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Network type("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    :cond_2
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    if-eq v0, v1, :cond_3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Voice network("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    :cond_3
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eq v0, v1, :cond_4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OoS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v0, v1, :cond_5

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "VoPS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    :cond_5
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-eq v0, v1, :cond_6

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CS_OoS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    :cond_6
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eq v0, v1, :cond_7

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isWifiConnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    :cond_7
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-eq v0, v1, :cond_8

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isPsOnlyReg("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    :cond_8
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eq v0, v1, :cond_9

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isDataConnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Operator("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    :cond_a
    const-string p0, ", $"

    const-string p1, ""

    invoke-virtual {v4, p0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->equalsInternal(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public equalsIgnoreEpdg(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->equalsInternal(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 15

    .line 123
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    .line 124
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object p0

    .line 123
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEpdgHOEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 5

    .line 253
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0xe

    const/4 v3, 0x1

    const-string v4, "NetworkEvent"

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v2, :cond_1

    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    if-eqz v0, :cond_1

    .line 257
    const-string p0, "isEpdgHOEvent: From IWLAN to LTE."

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 259
    :cond_1
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 260
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v2, :cond_3

    .line 262
    :cond_2
    const-string p0, "isEpdgHOEvent: From LTE to IWLAN."

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 266
    :cond_3
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v1, :cond_4

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eq p0, p1, :cond_4

    .line 267
    const-string p0, "isEpdgHOEvent: Only wifi connection is changed."

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;
    .locals 2

    .line 241
    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 242
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq p0, p1, :cond_1

    .line 245
    sget-object p1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->DISABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    .line 246
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VoPS changed. enabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkEvent"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 249
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->KEEP:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkEvent [network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voiceOverPs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outOfService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVoiceRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", csOutOfService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWifiConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEpdgConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEpdgAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", operatorNumeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPsOnlyReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDataConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

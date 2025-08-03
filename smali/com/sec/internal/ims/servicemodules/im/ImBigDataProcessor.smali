.class public Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;
.super Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;
.source "ImBigDataProcessor.java"


# instance fields
.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method


# virtual methods
.method protected getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method protected getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method protected getMessageType(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)Ljava/lang/String;
    .locals 1

    .line 30
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 39
    const-string p0, "SLM"

    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "IM"

    goto :goto_0

    .line 36
    :cond_1
    const-string p0, "GLS"

    goto :goto_0

    .line 33
    :cond_2
    const-string p0, "FT"

    :goto_0
    if-eqz p2, :cond_3

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_CHATBOT"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method protected getMessageTypeForILA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "FT_CHATBOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "SLM_CHATBOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "IM_CHATBOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "SLM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "GLS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "FT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "GLS_CHATBOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 81
    const-string p0, "RIOS"

    return-object p0

    .line 75
    :pswitch_0
    const-string p0, "MFOS"

    return-object p0

    .line 77
    :pswitch_1
    const-string p0, "MSOS"

    return-object p0

    .line 73
    :pswitch_2
    const-string p0, "MIOS"

    return-object p0

    .line 69
    :pswitch_3
    const-string p0, "RSOS"

    return-object p0

    .line 71
    :pswitch_4
    const-string p0, "RGOS"

    return-object p0

    .line 67
    :pswitch_5
    const-string p0, "RFOS"

    return-object p0

    .line 79
    :pswitch_6
    const-string p0, "MGOS"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392b9be2 -> :sswitch_6
        0x8ce -> :sswitch_5
        0x1140e -> :sswitch_4
        0x14114 -> :sswitch_3
        0x24efe334 -> :sswitch_2
        0x47f22b24 -> :sswitch_1
        0x55f298de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z
    .locals 0

    .line 24
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isWifiConnected()Z
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isWifiConnected()Z

    move-result p0

    return p0
.end method

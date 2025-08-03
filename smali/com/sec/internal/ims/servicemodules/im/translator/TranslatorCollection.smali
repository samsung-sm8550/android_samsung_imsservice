.class public Lcom/sec/internal/ims/servicemodules/im/translator/TranslatorCollection;
.super Ljava/lang/Object;
.source "TranslatorCollection.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TranslatorCollection"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translateEngineParticipantInfo(Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 2

    if-eqz p0, :cond_9

    .line 32
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    if-eqz v0, :cond_9

    .line 33
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/translator/TranslatorCollection$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConferenceParticipantInfo$ImConferenceParticipantStatus:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No translation for the following Engine\'s participant Status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mParticipantStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranslatorCollection"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->TO_INVITE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionReason:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->DEPARTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUserElemState:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceUserElemState;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 41
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    if-ne p1, v0, :cond_5

    .line 42
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mDisconnectionCause:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p0, p1, :cond_4

    .line 43
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 45
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 47
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    if-ne p1, p0, :cond_6

    .line 48
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 50
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 40
    :cond_7
    :goto_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    .line 35
    :cond_8
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->ACCEPTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    goto :goto_2

    :cond_9
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

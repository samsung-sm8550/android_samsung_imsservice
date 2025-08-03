.class public Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
.super Ljava/util/Observable;
.source "ChatData.java"


# instance fields
.field private final mChatId:Ljava/lang/String;

.field private mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field private mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field private mContributionId:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mCreatedBy:Lcom/sec/ims/util/ImsUri;

.field private mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field private mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

.field private final mIconPath:Ljava/lang/String;

.field private mId:I

.field private mInsertedTimeStamp:J

.field private mInvitedBy:Lcom/sec/ims/util/ImsUri;

.field private mIsChatbotRole:Z

.field private mIsIconUpdateRequiredOnSessionEstablished:Z

.field private mIsMuted:Z

.field private mIsReusable:Z

.field private final mMaxParticipantCount:I

.field private mOwnGroupAlias:Ljava/lang/String;

.field private mOwnIMSI:Ljava/lang/String;

.field private mOwnNumber:Ljava/lang/String;

.field private mSessionUri:Lcom/sec/ims/util/ImsUri;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field private mSubject:Ljava/lang/String;

.field private mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;Ljava/lang/String;ZILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZJLjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)V
    .locals 7

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    move-object/from16 v4, p20

    .line 91
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 28
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 29
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 30
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move v5, p1

    .line 92
    iput v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    move-object v5, p2

    .line 93
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    move-object v5, p3

    .line 94
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    move-object v5, p4

    .line 95
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    move-object v5, p5

    .line 96
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-object v5, p6

    .line 97
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 98
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    move v5, p8

    .line 99
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    move/from16 v5, p9

    .line 100
    iput v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    move-object/from16 v5, p10

    .line 101
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v5, p11

    .line 102
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    move-object/from16 v5, p12

    .line 103
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    move-object/from16 v5, p13

    .line 104
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    move/from16 v5, p14

    .line 105
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    move-wide/from16 v5, p15

    .line 106
    iput-wide v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    move-object/from16 v5, p17

    .line 107
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 108
    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    move/from16 v5, p24

    .line 109
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    move-object/from16 v5, p25

    .line 110
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 113
    :cond_0
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-direct {v5, p7, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    :cond_1
    if-nez v4, :cond_3

    if-nez p21, :cond_3

    if-eqz p22, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v1, p26

    goto :goto_3

    .line 117
    :cond_3
    :goto_1
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    if-nez p23, :cond_4

    .line 118
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    :goto_2
    move-object p1, v1

    move-object p2, v2

    move-object/from16 p3, p21

    move-object/from16 p4, p22

    move-object/from16 p5, p20

    move-object/from16 p6, p23

    invoke-direct/range {p1 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    goto :goto_0

    .line 122
    :goto_3
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    move-object/from16 v1, p27

    .line 123
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 28
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 29
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 30
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 58
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 60
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 63
    iput-object p10, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    const/16 p1, 0x64

    .line 64
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    .line 65
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 66
    iput-object p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    .line 67
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    .line 70
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 71
    iput-object p11, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 72
    iput-object p12, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    if-eqz p4, :cond_0

    .line 75
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    .line 80
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isMcsSupported(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getEpochNanosec(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    .line 84
    :cond_2
    iput-object p13, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 85
    iput-object p14, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 519
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 522
    :cond_2
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 523
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 524
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 527
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 530
    :cond_4
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object p0
.end method

.method public getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0
.end method

.method public getContributionId()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    return-object p0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public getCreatedBy()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object p0
.end method

.method public getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    return-object p0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    return p0
.end method

.method public getInsertedTimeStamp()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    return-wide v0
.end method

.method public getInvitedBy()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getMaxParticipantsCount()I
    .locals 0

    .line 476
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    return p0
.end method

.method public getOwnGroupAlias()Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnIMSI()Ljava/lang/String;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnPhoneNum()Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 484
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isChatbotRole()Z
    .locals 0

    .line 338
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    return p0
.end method

.method public isGroupChat()Z
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p0

    return p0
.end method

.method public isIconUpdatedRequiredOnSessionEstablished()Z
    .locals 0

    .line 326
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsIconUpdateRequiredOnSessionEstablished:Z

    return p0
.end method

.method public isMuted()Z
    .locals 0

    .line 330
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    return p0
.end method

.method public isReusable()Z
    .locals 0

    .line 334
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    return p0
.end method

.method public setContributionId(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq p1, v0, :cond_0

    .line 292
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 293
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public setIconUpdatedRequiredOnSessionEstablished(Z)V
    .locals 0

    .line 322
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsIconUpdateRequiredOnSessionEstablished:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    return-void
.end method

.method public setInsertedTimeStamp(J)V
    .locals 0

    .line 257
    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    return-void
.end method

.method public setOwnIMSI(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 286
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public setOwnPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    return-void
.end method

.method public setSessionUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 302
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatData [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 492
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 495
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxParticipantCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsReusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInsertedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnIMSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 503
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCreatedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 506
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInvitedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    .line 507
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0

    .line 471
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 472
    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq v0, p1, :cond_0

    .line 199
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 200
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateCreatedBy(Lcom/sec/ims/util/ImsUri;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    if-eq p1, v0, :cond_0

    .line 458
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 459
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 432
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateInvitedBy(Lcom/sec/ims/util/ImsUri;)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    if-eq p1, v0, :cond_0

    .line 465
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    .line 466
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateIsChatbotRole(Z)V
    .locals 1

    .line 450
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    if-eq p1, v0, :cond_0

    .line 451
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    .line 452
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateIsMuted(Z)V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    if-eq v0, p1, :cond_0

    .line 250
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    .line 251
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateIsReusable(Z)V
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    if-eq p1, v0, :cond_0

    .line 444
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 445
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateOwnGroupAlias(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 438
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    if-eq p1, v0, :cond_0

    .line 411
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 412
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateSubject(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 419
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 425
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 426
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

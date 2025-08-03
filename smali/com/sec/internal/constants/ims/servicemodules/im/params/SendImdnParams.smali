.class public final Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
.super Ljava/lang/Object;
.source "SendImdnParams.java"


# instance fields
.field public final mCallback:Landroid/os/Message;

.field public final mChatId:Ljava/lang/String;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public final mCpimDate:Ljava/util/Date;

.field public final mDeviceId:Ljava/lang/String;

.field public mImExtensionMNOHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mImdnDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBotSessionAnonymized:Z

.field public mIsGroupChat:Z

.field public mOwnImsi:Ljava/lang/String;

.field public final mRawHandle:Ljava/lang/Object;

.field public final mUri:Lcom/sec/ims/util/ImsUri;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;ZLjava/lang/String;)V
    .locals 14

    .line 79
    invoke-static/range {p9 .. p9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    .line 78
    invoke-direct/range {v0 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;",
            ">;Z",
            "Ljava/util/Date;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mRawHandle:Ljava/lang/Object;

    .line 86
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 87
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mChatId:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;

    .line 90
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mOwnImsi:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    .line 92
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;

    .line 93
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImdnDataList:Ljava/util/List;

    .line 94
    iput-boolean p10, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsGroupChat:Z

    .line 95
    iput-boolean p12, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsBotSessionAnonymized:Z

    .line 96
    iput-object p11, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCpimDate:Ljava/util/Date;

    .line 97
    iput-object p13, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUserAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addImExtensionMNOHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendImdnParams [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 107
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImdnDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mDeviceId:Ljava/lang/String;

    .line 112
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImExtensionMNOHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mImExtensionMNOHeaders:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mIsGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCpimDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mUserAlias:Ljava/lang/String;

    .line 117
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

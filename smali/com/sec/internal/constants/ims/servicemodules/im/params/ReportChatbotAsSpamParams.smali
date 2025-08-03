.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;
.super Ljava/lang/Object;
.source "ReportChatbotAsSpamParams.java"


# instance fields
.field public mChatbotUri:Lcom/sec/ims/util/ImsUri;

.field public mPhoneId:I

.field public mRequestId:Ljava/lang/String;

.field public mSpamInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mChatbotUri:Lcom/sec/ims/util/ImsUri;

    .line 13
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mSpamInfo:Ljava/lang/String;

    .line 14
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mPhoneId:I

    .line 15
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mRequestId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportChatbotAsSpamParams [ spamInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mSpamInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RequestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mRequestId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

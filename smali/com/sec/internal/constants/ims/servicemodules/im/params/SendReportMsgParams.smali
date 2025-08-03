.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;
.super Ljava/lang/Object;
.source "SendReportMsgParams.java"


# instance fields
.field private mSpamDate:Ljava/lang/String;

.field private mSpamFrom:Lcom/sec/ims/util/ImsUri;

.field private mSpamMsgImdnId:Ljava/lang/String;

.field private mSpamTo:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamFrom:Lcom/sec/ims/util/ImsUri;

    .line 13
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamTo:Lcom/sec/ims/util/ImsUri;

    .line 14
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamDate:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamMsgImdnId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSpamDate()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamDate:Ljava/lang/String;

    return-object p0
.end method

.method public getSpamFrom()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamFrom:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getSpamMsgImdnId()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamMsgImdnId:Ljava/lang/String;

    return-object p0
.end method

.method public getSpamTo()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamTo:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendReportMsgParams [mSpamFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamFrom:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSpamTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamTo:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSpamDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSpamMsgImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->mSpamMsgImdnId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

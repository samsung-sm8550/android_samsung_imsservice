.class Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final compactForm:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->compactForm:Z

    return-void
.end method


# virtual methods
.method protected getMsrpResponseTitle()Ljava/lang/String;
    .locals 0

    .line 188
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->compactForm:Z

    if-nez p0, :cond_0

    const-string p0, "MsrpResponse"

    goto :goto_0

    :cond_0
    const-string p0, "m"

    :goto_0
    return-object p0
.end method

.method protected getReasonHeaderTitle()Ljava/lang/String;
    .locals 0

    .line 196
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->compactForm:Z

    if-nez p0, :cond_0

    const-string p0, "ReasonHeader"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "r"

    :goto_0
    return-object p0
.end method

.method protected getSipResponseTitle()Ljava/lang/String;
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->compactForm:Z

    if-nez p0, :cond_0

    const-string p0, "SipResponse"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "s"

    :goto_0
    return-object p0
.end method

.method protected getTypeImError()Ljava/lang/String;
    .locals 0

    .line 180
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->compactForm:Z

    if-nez p0, :cond_0

    const-string p0, "ImError"

    goto :goto_0

    :cond_0
    const-string p0, "i"

    :goto_0
    return-object p0
.end method

.method protected getTypeTitle()Ljava/lang/String;
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->compactForm:Z

    if-nez p0, :cond_0

    const-string p0, "Type"

    goto :goto_0

    :cond_0
    const-string p0, "T"

    :goto_0
    return-object p0
.end method

.method protected getWarningHeaderTitle()Ljava/lang/String;
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Title;->compactForm:Z

    if-nez p0, :cond_0

    const-string p0, "WarningHeader"

    goto :goto_0

    :cond_0
    const-string p0, "m"

    :goto_0
    return-object p0
.end method

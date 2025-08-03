.class public Lcom/sec/internal/constants/ims/SipMsg$StatusLine;
.super Lcom/sec/internal/constants/ims/SipMsg$StartLine;
.source "SipMsg.java"


# instance fields
.field code:I

.field reason:Ljava/lang/String;


# direct methods
.method protected constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 314
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;-><init>()V

    const/4 v0, 0x0

    .line 315
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->sipVer:Ljava/lang/String;

    const/4 v0, 0x1

    .line 317
    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->code:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x2

    .line 321
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 325
    iget p0, p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->code:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->reason:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->reason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

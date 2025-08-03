.class public Lcom/sec/internal/constants/ims/SipReason;
.super Ljava/lang/Object;
.source "SipReason.java"


# instance fields
.field private mCause:I

.field private mExtension:[Ljava/lang/String;

.field private mIsLocalRelease:Z

.field private mProtocol:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Z[Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipReason;->mProtocol:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/sec/internal/constants/ims/SipReason;->mCause:I

    .line 37
    iput-object p3, p0, Lcom/sec/internal/constants/ims/SipReason;->mText:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/sec/internal/constants/ims/SipReason;->mExtension:[Ljava/lang/String;

    .line 39
    iput-boolean p4, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipReason;->mProtocol:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/sec/internal/constants/ims/SipReason;->mCause:I

    .line 28
    iput-object p3, p0, Lcom/sec/internal/constants/ims/SipReason;->mText:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/sec/internal/constants/ims/SipReason;->mExtension:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    return-void
.end method


# virtual methods
.method public getCause()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/sec/internal/constants/ims/SipReason;->mCause:I

    return p0
.end method

.method public getExtensions()[Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipReason;->mExtension:[Ljava/lang/String;

    return-object p0
.end method

.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipReason;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipReason;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public isLocalRelease()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    return p0
.end method

.method public setLocalRelease(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/SipReason;->mIsLocalRelease:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    const-string v1, "Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/SipReason;->mProtocol:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "cause="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/sec/internal/constants/ims/SipReason;->mCause:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "text="

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/SipReason;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipReason;->mExtension:[Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 79
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

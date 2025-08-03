.class public Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;
.super Ljava/lang/Object;
.source "TextInfo.java"


# instance fields
.field private final mSessionId:I

.field private final mText:Ljava/lang/String;

.field private final mTextLen:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->mSessionId:I

    .line 15
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->mText:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->mTextLen:I

    return-void
.end method


# virtual methods
.method public getSessionId()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->mSessionId:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTextLen()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/TextInfo;->mTextLen:I

    return p0
.end method

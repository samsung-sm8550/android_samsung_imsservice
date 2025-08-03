.class public Lcom/sec/internal/constants/ims/updater/StubApiConstants$HttpFailureResponseException;
.super Ljava/io/IOException;
.source "StubApiConstants.java"


# instance fields
.field private final mCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 41
    iput p1, p0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$HttpFailureResponseException;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$HttpFailureResponseException;->mCode:I

    return p0
.end method

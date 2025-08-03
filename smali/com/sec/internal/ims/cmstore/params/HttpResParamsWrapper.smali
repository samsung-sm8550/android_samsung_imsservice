.class public Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;
.super Ljava/lang/Object;
.source "HttpResParamsWrapper.java"


# instance fields
.field public mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field public mBufDbParams:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 8
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    return-void
.end method

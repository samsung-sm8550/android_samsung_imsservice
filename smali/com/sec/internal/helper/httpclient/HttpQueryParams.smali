.class public Lcom/sec/internal/helper/httpclient/HttpQueryParams;
.super Ljava/lang/Object;
.source "HttpQueryParams.java"


# instance fields
.field private mParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParamsEncoded:Z


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParams:Ljava/util/LinkedHashMap;

    .line 14
    iput-boolean p2, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParamsEncoded:Z

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParams:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public isEncoded()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParamsEncoded:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpQueryParams;->mParams:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

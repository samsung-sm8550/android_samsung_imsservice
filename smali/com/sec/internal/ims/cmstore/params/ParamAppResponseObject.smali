.class public Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;
.super Ljava/lang/Object;
.source "ParamAppResponseObject.java"


# instance fields
.field public errorCode:I

.field public jsonResult:Ljava/lang/String;

.field public operation:I

.field public requestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;->errorCode:I

    .line 12
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;->jsonResult:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;->operation:I

    .line 14
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppResponseObject;->requestUrl:Ljava/lang/String;

    return-void
.end method

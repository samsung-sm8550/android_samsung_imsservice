.class public interface abstract Lcom/sec/internal/helper/HttpRequest$UploadProgress;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final DEFAULT:Lcom/sec/internal/helper/HttpRequest$UploadProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 410
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$UploadProgress$1;

    invoke-direct {v0}, Lcom/sec/internal/helper/HttpRequest$UploadProgress$1;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    return-void
.end method


# virtual methods
.method public abstract isCancelled()Z
.end method

.method public abstract onUpload(JJ)V
.end method

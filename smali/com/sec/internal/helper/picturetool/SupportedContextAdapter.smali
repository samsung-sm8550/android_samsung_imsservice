.class public abstract Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;
.super Ljava/lang/Object;
.source "SupportedContextAdapter.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/IContentTypeContext;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SupportedContextAdapter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-static {p2, p1}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public validateExtension()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    sget-object p0, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "validateExtension:: Exit"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

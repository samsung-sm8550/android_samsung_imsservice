.class Lcom/sec/internal/log/IMSLog$1;
.super Ljava/lang/Object;
.source "IMSLog.java"

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

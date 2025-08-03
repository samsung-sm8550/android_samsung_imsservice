.class Lcom/google/i18n/phonenumbers/MetadataManager$1;
.super Ljava/lang/Object;
.source "MetadataManager.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/MetadataLoader;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 53
    const-class p0, Lcom/google/i18n/phonenumbers/MetadataManager;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.class Lcom/sec/internal/ims/aec/util/ContentParser$1;
.super Ljava/util/ArrayList;
.source "ContentParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const-string v0, "application"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string/jumbo v0, "ratvoiceentitleinfodetails"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

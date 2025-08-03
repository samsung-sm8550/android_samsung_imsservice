.class Lcom/sec/internal/constants/ims/config/ConfigConstants$1;
.super Ljava/util/TreeMap;
.source "ConfigConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 599
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 601
    const-string v0, "ap2001"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v0, "ap2002"

    const-string v2, "1"

    invoke-virtual {p0, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v0, "ap2003"

    const-string v2, "2"

    invoke-virtual {p0, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v0, "ap2004"

    const-string v2, "3"

    invoke-virtual {p0, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v0, "ap2005"

    const-string v2, "4"

    invoke-virtual {p0, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v0, "urn:oma:mo:ext-3gpp-ims:1.0"

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v0, "urn:oma:mo:ext-3gpp-nas-config:1.0"

    const-string v1, "5"

    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

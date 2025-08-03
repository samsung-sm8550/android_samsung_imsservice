.class public Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
.source "RequestServiceEntitlementStatus.java"


# instance fields
.field public serviceList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;-><init>()V

    return-void
.end method

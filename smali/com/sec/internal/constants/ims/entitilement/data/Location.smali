.class public Lcom/sec/internal/constants/ims/entitilement/data/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field public Networks3gpp:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "3gpp-networks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/constants/ims/entitilement/data/Network3gpp;",
            ">;"
        }
    .end annotation
.end field

.field public country:Ljava/lang/String;

.field public indoor:Ljava/lang/Boolean;

.field public latitude:Ljava/lang/Double;

.field public longitude:Ljava/lang/Double;

.field public metadata:Ljava/lang/String;

.field public radius:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

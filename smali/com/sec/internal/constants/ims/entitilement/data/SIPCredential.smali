.class public Lcom/sec/internal/constants/ims/entitilement/data/SIPCredential;
.super Ljava/lang/Object;
.source "SIPCredential.java"


# instance fields
.field public impu:Ljava/lang/String;

.field public sipPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-password"
    .end annotation
.end field

.field public sipUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

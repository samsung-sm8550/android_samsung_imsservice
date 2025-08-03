.class public Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field mContactNormalizedNumber:Ljava/lang/String;

.field mContactNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->mContactNumber:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->mContactNormalizedNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNormalizedNumber()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->mContactNormalizedNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->mContactNumber:Ljava/lang/String;

    return-object p0
.end method

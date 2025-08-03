.class public Lorg/xbill/DNS/MRRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MRRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x4df6edd75029996dL


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 19
    new-instance p0, Lorg/xbill/DNS/MRRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/MRRecord;-><init>()V

    return-object p0
.end method

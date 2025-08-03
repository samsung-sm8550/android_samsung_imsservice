.class public Lorg/xbill/DNS/CNAMERecord;
.super Lorg/xbill/DNS/SingleCompressedNameBase;
.source "CNAMERecord.java"


# static fields
.field private static final serialVersionUID:J = -0x37cb3cbfd07c7ad4L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 19
    new-instance p0, Lorg/xbill/DNS/CNAMERecord;

    invoke-direct {p0}, Lorg/xbill/DNS/CNAMERecord;-><init>()V

    return-object p0
.end method

.method public getTarget()Lorg/xbill/DNS/Name;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lorg/xbill/DNS/SingleNameBase;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object p0

    return-object p0
.end method

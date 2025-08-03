.class public Lorg/xbill/DNS/PTRRecord;
.super Lorg/xbill/DNS/SingleCompressedNameBase;
.source "PTRRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x737c6468424b3050L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 20
    new-instance p0, Lorg/xbill/DNS/PTRRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/PTRRecord;-><init>()V

    return-object p0
.end method

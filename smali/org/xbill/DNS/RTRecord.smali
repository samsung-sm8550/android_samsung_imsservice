.class public Lorg/xbill/DNS/RTRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "RTRecord.java"


# static fields
.field private static final serialVersionUID:J = -0x2c7ec425ddcb0e52L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 0

    .line 19
    new-instance p0, Lorg/xbill/DNS/RTRecord;

    invoke-direct {p0}, Lorg/xbill/DNS/RTRecord;-><init>()V

    return-object p0
.end method

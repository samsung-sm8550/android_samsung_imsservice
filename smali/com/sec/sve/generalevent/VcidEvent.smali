.class public abstract Lcom/sec/sve/generalevent/VcidEvent;
.super Ljava/lang/Object;
.source "VcidEvent.java"


# static fields
.field public static final BUNDLE_KEY_ACTION:Ljava/lang/String; = "action"

.field public static final BUNDLE_KEY_FILE_URL:Ljava/lang/String; = "fileURL"

.field public static final BUNDLE_KEY_SERVICE_TYPE:Ljava/lang/String; = "serviceType"

.field public static final BUNDLE_KEY_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final BUNDLE_KEY_SUB_ID:Ljava/lang/String; = "subId"

.field public static final BUNDLE_VALUE_ACTION_SET_VCID_ENGINE:Ljava/lang/String; = "SetVCIDEngine"

.field public static final BUNDLE_VALUE_ACTION_START:Ljava/lang/String; = "start"

.field public static final BUNDLE_VALUE_ACTION_STOP:Ljava/lang/String; = "stop"

.field public static final BUNDLE_VALUE_SERVICE_TYPE_MYVIEW:Ljava/lang/String; = "MyView"

.field public static final BUNDLE_VALUE_SERVICE_TYPE_VCID:Ljava/lang/String; = "VCID"

.field public static final EVENT_NAME:Ljava/lang/String; = "VCID"


# instance fields
.field protected mEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/sec/sve/generalevent/VcidEvent;->mEvent:Ljava/lang/String;

    return-object p0
.end method

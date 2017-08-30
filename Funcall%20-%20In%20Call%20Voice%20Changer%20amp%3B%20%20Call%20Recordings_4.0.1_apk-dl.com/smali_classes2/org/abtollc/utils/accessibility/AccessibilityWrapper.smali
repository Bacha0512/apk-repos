.class public abstract Lorg/abtollc/utils/accessibility/AccessibilityWrapper;
.super Ljava/lang/Object;
.source "AccessibilityWrapper.java"


# static fields
.field private static instance:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/abtollc/utils/accessibility/AccessibilityWrapper;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lorg/abtollc/utils/accessibility/AccessibilityWrapper;->instance:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/abtollc/utils/Compatibility;->isCompatible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lorg/abtollc/utils/accessibility/Accessibility4;

    invoke-direct {v0}, Lorg/abtollc/utils/accessibility/Accessibility4;-><init>()V

    sput-object v0, Lorg/abtollc/utils/accessibility/AccessibilityWrapper;->instance:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lorg/abtollc/utils/accessibility/AccessibilityWrapper;->instance:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

    return-object v0

    .line 16
    :cond_1
    new-instance v0, Lorg/abtollc/utils/accessibility/Accessibility3;

    invoke-direct {v0}, Lorg/abtollc/utils/accessibility/Accessibility3;-><init>()V

    sput-object v0, Lorg/abtollc/utils/accessibility/AccessibilityWrapper;->instance:Lorg/abtollc/utils/accessibility/AccessibilityWrapper;

    goto :goto_0
.end method


# virtual methods
.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isEnabled()Z
.end method

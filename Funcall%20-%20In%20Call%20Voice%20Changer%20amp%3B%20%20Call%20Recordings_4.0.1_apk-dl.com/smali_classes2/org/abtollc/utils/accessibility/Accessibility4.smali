.class public Lorg/abtollc/utils/accessibility/Accessibility4;
.super Lorg/abtollc/utils/accessibility/AccessibilityWrapper;
.source "Accessibility4.java"


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/abtollc/utils/accessibility/AccessibilityWrapper;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/abtollc/utils/accessibility/Accessibility4;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    iget-object v0, p0, Lorg/abtollc/utils/accessibility/Accessibility4;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 13
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lorg/abtollc/utils/accessibility/Accessibility4;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 15
    :cond_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/abtollc/utils/accessibility/Accessibility4;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

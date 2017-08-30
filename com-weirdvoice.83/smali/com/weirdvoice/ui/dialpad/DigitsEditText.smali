.class public Lcom/weirdvoice/ui/dialpad/DigitsEditText;
.super Landroid/widget/EditText;
.source "DigitsEditText.java"


# instance fields
.field private isDigit:Ljava/lang/Boolean;

.field private showSoftInputOnFocus:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->isDigit:Ljava/lang/Boolean;

    .line 46
    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->showSoftInputOnFocus:Ljava/lang/reflect/Method;

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setIsDigit(ZZ)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method private applyKeyboardShowHide(Z)V
    .locals 4
    .param p1, "autofocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 133
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private reflexSetShowSoftInputOnFocus(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->showSoftInputOnFocus:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->showSoftInputOnFocus:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 99
    if-eqz p1, :cond_1

    .line 100
    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->applyKeyboardShowHide(Z)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 104
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 174
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->applyKeyboardShowHide(Z)V

    .line 179
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 114
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->applyKeyboardShowHide(Z)V

    .line 115
    return v0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 149
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v0

    .line 150
    .local v0, "added":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v2

    .line 151
    .local v2, "removed":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 152
    .local v1, "length":I
    if-le v0, v2, :cond_2

    .line 153
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 154
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 155
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 169
    .end local v0    # "added":I
    .end local v1    # "length":I
    .end local v2    # "removed":I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 170
    :cond_1
    :goto_1
    return-void

    .line 156
    .restart local v0    # "added":I
    .restart local v1    # "length":I
    .restart local v2    # "removed":I
    :cond_2
    if-le v2, v0, :cond_1

    .line 157
    invoke-virtual {p1, v6}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 158
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 159
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    goto :goto_0

    .line 163
    .end local v0    # "added":I
    .end local v1    # "length":I
    .end local v2    # "removed":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1
.end method

.method public declared-synchronized setIsDigit(ZZ)V
    .locals 2
    .param p1, "isDigit"    # Z
    .param p2, "autofocus"    # Z

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->isDigit:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 72
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->isDigit:Ljava/lang/Boolean;

    .line 73
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->reflexSetShowSoftInputOnFocus(Z)V

    .line 74
    if-nez p1, :cond_1

    .line 78
    const v0, 0x80021

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setInputType(I)V

    .line 80
    const/4 v0, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v0, v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setTextSize(IF)V

    .line 83
    :cond_1
    invoke-direct {p0, p2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->applyKeyboardShowHide(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 73
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

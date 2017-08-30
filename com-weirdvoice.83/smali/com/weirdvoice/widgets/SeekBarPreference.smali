.class public Lcom/weirdvoice/widgets/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final ANDROID_NS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final DB_SUFFIX:Ljava/lang/String; = "dB"

.field private static final THIS_FILE:Ljava/lang/String; = "SeekBarPrefs"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultValue:F

.field private final dialogMessage:Ljava/lang/String;

.field private final max:F

.field private seekBar:Landroid/widget/SeekBar;

.field private subdivision:D

.field private final suffix:Ljava/lang/String;

.field private value:F

.field private valueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    .line 52
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->subdivision:D

    .line 56
    iput-object p1, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->context:Landroid/content/Context;

    .line 58
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "dialogMessage"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->dialogMessage:Ljava/lang/String;

    .line 59
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    .line 60
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->defaultValue:F

    .line 61
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "max"

    const/16 v2, 0xa

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->max:F

    .line 63
    return-void
.end method

.method private applySeekBarValues()V
    .locals 6

    .prologue
    .line 99
    const-string v0, "dB"

    iget-object v1, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->max:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    iget-wide v4, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->subdivision:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    invoke-direct {p0, v1}, Lcom/weirdvoice/widgets/SeekBarPreference;->valueToProgressUnit(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 105
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->max:F

    invoke-direct {p0, v1}, Lcom/weirdvoice/widgets/SeekBarPreference;->valueToProgressUnit(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0
.end method

.method private progressUnitToDisplay(I)Ljava/lang/String;
    .locals 4
    .param p1, "pVal"    # I

    .prologue
    .line 128
    const-string v0, "dB"

    iget-object v1, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->subdivision:D

    div-double/2addr v0, v2

    iget v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->max:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->subdivision:D

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private progressUnitToValue(I)F
    .locals 8
    .param p1, "pVal"    # I

    .prologue
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 118
    const-string v2, "dB"

    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-string v2, "SeekBarPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Progress is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    int-to-double v2, p1

    iget-wide v4, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->subdivision:D

    div-double/2addr v2, v4

    iget v4, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->max:F

    float-to-double v4, v4

    sub-double v0, v2, v4

    .line 121
    .local v0, "dB":D
    div-double v2, v0, v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 124
    .end local v0    # "dB":D
    :goto_0
    return v2

    :cond_0
    int-to-double v2, p1

    iget-wide v4, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->subdivision:D

    div-double/2addr v2, v4

    double-to-float v2, v2

    goto :goto_0
.end method

.method private valueToProgressUnit(F)I
    .locals 6
    .param p1, "val"    # F

    .prologue
    .line 109
    const-string v2, "dB"

    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "SeekBarPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Value is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .line 112
    .local v0, "dB":D
    iget v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->max:F

    float-to-double v2, v2

    add-double/2addr v2, v0

    iget-wide v4, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->subdivision:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 114
    .end local v0    # "dB":D
    :goto_0
    return v2

    :cond_0
    float-to-double v2, p1

    iget-wide v4, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->subdivision:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 137
    invoke-direct {p0}, Lcom/weirdvoice/widgets/SeekBarPreference;->applySeekBarValues()V

    .line 138
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x6

    .line 68
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v2, "splashText":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->dialogMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->dialogMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    .line 79
    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    const/high16 v4, 0x42000000    # 32.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v3, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    .line 85
    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    iget-object v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/SeekBarPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->defaultValue:F

    invoke-virtual {p0, v3}, Lcom/weirdvoice/widgets/SeekBarPreference;->getPersistedFloat(F)F

    move-result v3

    iput v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/weirdvoice/widgets/SeekBarPreference;->applySeekBarValues()V

    .line 94
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 153
    const-string v0, "SeekBarPrefs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dialog is closing..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " et "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/weirdvoice/widgets/SeekBarPreference;->shouldPersist()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/weirdvoice/widgets/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "SeekBarPrefs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    invoke-virtual {p0, v0}, Lcom/weirdvoice/widgets/SeekBarPreference;->persistFloat(F)Z

    .line 158
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seek"    # Landroid/widget/SeekBar;
    .param p2, "aValue"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 161
    invoke-direct {p0, p2}, Lcom/weirdvoice/widgets/SeekBarPreference;->progressUnitToDisplay(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->valueText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    if-nez v2, :cond_1

    .end local v0    # "t":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    if-eqz p3, :cond_0

    .line 164
    invoke-direct {p0, p2}, Lcom/weirdvoice/widgets/SeekBarPreference;->progressUnitToValue(I)F

    move-result v1

    iput v1, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    .line 165
    const-string v1, "SeekBarPrefs"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set ratio value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget v1, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/weirdvoice/widgets/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    return-void

    .line 162
    .restart local v0    # "t":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restore"    # Z
    .param p2, "aDefaultValue"    # Ljava/lang/Object;

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 143
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->defaultValue:F

    invoke-virtual {p0, v0}, Lcom/weirdvoice/widgets/SeekBarPreference;->getPersistedFloat(F)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    .line 148
    .end local p2    # "aDefaultValue":Ljava/lang/Object;
    :goto_1
    return-void

    .line 144
    .restart local p2    # "aDefaultValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_1
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "aDefaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/weirdvoice/widgets/SeekBarPreference;->value:F

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 172
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 176
    return-void
.end method

.class public Lcom/weirdvoice/widgets/DialerCallBar;
.super Landroid/widget/LinearLayout;
.source "DialerCallBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;
    }
.end annotation


# instance fields
.field private actionListener:Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/weirdvoice/widgets/DialerCallBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/weirdvoice/widgets/DialerCallBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    const v6, 0x7f0b00b1

    const/4 v5, 0x1

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 66
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030030

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    const v4, 0x7f0b00b0

    invoke-virtual {p0, v4}, Lcom/weirdvoice/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0, v6}, Lcom/weirdvoice/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0, v6}, Lcom/weirdvoice/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 71
    const v4, 0x7f0b00b2

    invoke-virtual {p0, v4}, Lcom/weirdvoice/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/DialerCallBar;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/weirdvoice/widgets/DialerCallBar;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 76
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/weirdvoice/widgets/DialerCallBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 78
    .local v3, "w":I
    iget v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 79
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 80
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {p0, v0}, Lcom/weirdvoice/widgets/DialerCallBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/weirdvoice/widgets/DialerCallBar;->actionListener:Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 119
    .local v0, "viewId":I
    const v1, 0x7f0b00b0

    if-ne v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/weirdvoice/widgets/DialerCallBar;->actionListener:Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;

    invoke-interface {v1}, Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;->buyCredit()V

    .line 129
    .end local v0    # "viewId":I
    :cond_0
    :goto_0
    return-void

    .line 123
    .restart local v0    # "viewId":I
    :cond_1
    const v1, 0x7f0b00b1

    if-ne v0, v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/weirdvoice/widgets/DialerCallBar;->actionListener:Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;

    invoke-interface {v1}, Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;->placeCall()V

    goto :goto_0

    .line 125
    :cond_2
    const v1, 0x7f0b00b2

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/weirdvoice/widgets/DialerCallBar;->actionListener:Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;

    invoke-interface {v1}, Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;->openHelpMenu()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/weirdvoice/widgets/DialerCallBar;->actionListener:Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 141
    .local v0, "viewId":I
    const v2, 0x7f0b00b1

    if-ne v0, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/weirdvoice/widgets/DialerCallBar;->actionListener:Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;

    invoke-interface {v2}, Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;->dialLast()V

    .line 143
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 144
    const/4 v1, 0x1

    .line 147
    .end local v0    # "viewId":I
    :cond_0
    return v1
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 100
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/weirdvoice/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/weirdvoice/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 103
    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/weirdvoice/widgets/DialerCallBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 105
    return-void
.end method

.method public setOnDialActionListener(Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/weirdvoice/widgets/DialerCallBar;->actionListener:Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;

    .line 94
    return-void
.end method

.method public setVideoEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 113
    return-void
.end method

.class public Lcom/weirdvoice/ui/CallList;
.super Landroid/widget/ArrayAdapter;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private final cos:[Ljava/lang/String;

.field private final dst:[Ljava/lang/String;

.field private final dur:[Ljava/lang/String;

.field private final whe:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "_dst"    # [Ljava/lang/String;
    .param p3, "_whe"    # [Ljava/lang/String;
    .param p4, "_dur"    # [Ljava/lang/String;
    .param p5, "_cos"    # [Ljava/lang/String;

    .prologue
    .line 29
    const v0, 0x7f030025

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/weirdvoice/ui/CallList;->context:Landroid/app/Activity;

    .line 31
    iput-object p3, p0, Lcom/weirdvoice/ui/CallList;->whe:[Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/weirdvoice/ui/CallList;->dst:[Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/weirdvoice/ui/CallList;->dur:[Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/weirdvoice/ui/CallList;->cos:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/CallList;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/weirdvoice/ui/CallList;->dst:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/CallList;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/weirdvoice/ui/CallList;->context:Landroid/app/Activity;

    return-object v0
.end method

.method private getContactNameFromNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v7, ""

    .line 82
    .local v7, "contactName":Ljava/lang/String;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "number"

    aput-object v3, v2, v0

    .line 83
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    .local v1, "contactUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/weirdvoice/ui/CallList;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    move-object v6, p2

    .line 40
    .local v6, "rowView":Landroid/view/View;
    if-nez v6, :cond_0

    .line 41
    iget-object v9, p0, Lcom/weirdvoice/ui/CallList;->context:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 42
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f030025

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v4, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 45
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v9, 0x7f0b007b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 46
    .local v8, "tdst":Landroid/widget/TextView;
    const v9, 0x7f0b007c

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 48
    .local v7, "tdetails":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/weirdvoice/ui/CallList;->dst:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-direct {p0, v10}, Lcom/weirdvoice/ui/CallList;->getContactNameFromNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/weirdvoice/ui/CallList;->dst:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v9, p0, Lcom/weirdvoice/ui/CallList;->whe:[Ljava/lang/String;

    aget-object v9, v9, p1

    const-string v10, ""

    if-eq v9, v10, :cond_1

    .line 52
    iget-object v9, p0, Lcom/weirdvoice/ui/CallList;->cos:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 53
    .local v2, "fcost":F
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v9, "$0.000"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "formatter":Ljava/text/NumberFormat;
    float-to-double v10, v2

    invoke-virtual {v3, v10, v11}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "cost":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/weirdvoice/ui/CallList;->whe:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/weirdvoice/ui/CallList;->dur:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/weirdvoice/ui/CallList;->context:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c025d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v9, Lcom/weirdvoice/ui/CallList$1;

    invoke-direct {v9, p0, p1}, Lcom/weirdvoice/ui/CallList$1;-><init>(Lcom/weirdvoice/ui/CallList;I)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .end local v1    # "cost":Ljava/lang/String;
    .end local v2    # "fcost":F
    .end local v3    # "formatter":Ljava/text/NumberFormat;
    :goto_0
    return-object v6

    .line 68
    :cond_1
    const v9, 0x7f0b007a

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .local v0, "calltype":Landroid/widget/ImageView;
    const v9, 0x7f0b007d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 70
    .local v5, "redial":Landroid/widget/ImageView;
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

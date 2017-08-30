.class public Lcom/rami_bar/fun_call/activities/FragmentSms;
.super Landroid/support/v4/app/Fragment;
.source "FragmentSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/FragmentSms$SendSmsInterface;
    }
.end annotation


# static fields
.field private static final CONTACTS_PERMISSIONS_REQUEST:I = 0x2

.field private static final SMS_PERMISSIONS_REQUEST:I = 0x3


# instance fields
.field private bt_send_sms:Landroid/support/design/widget/FloatingActionButton;

.field private contacts_adapter:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

.field private contacts_array_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rami_bar/fun_call/objects/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private ctv_select_all:Landroid/widget/CheckedTextView;

.field private lv_contacts:Landroid/widget/ListView;

.field private photo_uri:Landroid/net/Uri;

.field private tv_counter_temp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/FragmentSms;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/FragmentSms;)Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_adapter:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/rami_bar/fun_call/activities/FragmentSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->setNumContactsSelected()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/activities/FragmentSms;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->lv_contacts:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/activities/FragmentSms;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->ctv_select_all:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/rami_bar/fun_call/activities/FragmentSms;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentSms;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->sendShare()V

    return-void
.end method

.method private checkContactsPermission()Z
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/rami_bar/fun_call/activities/FragmentSms;->requestPermissions([Ljava/lang/String;I)V

    .line 114
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkSmsPermission()Z
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/rami_bar/fun_call/activities/FragmentSms;->requestPermissions([Ljava/lang/String;I)V

    .line 127
    const/4 v1, 0x0

    .line 129
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private fillListOrderFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "order"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 310
    .local v11, "phones":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 367
    :goto_0
    return-void

    .line 314
    :cond_0
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    const-string v9, ""

    .line 317
    .local v9, "name":Ljava/lang/String;
    :try_start_0
    const-string v0, "display_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 322
    :goto_2
    const-string v10, ""

    .line 324
    .local v10, "phone_number":Ljava/lang/String;
    :try_start_1
    const-string v0, "data1"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\D+"

    const-string v2, ""

    .line 325
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 332
    :goto_3
    :try_start_2
    const-string v0, "photo_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 333
    .local v12, "photo_id":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 334
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->photo_uri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 348
    .end local v12    # "photo_id":Ljava/lang/String;
    :goto_4
    const-string v8, "0"

    .line 350
    .local v8, "in_visible_group":Ljava/lang/String;
    :try_start_3
    const-string v0, "in_visible_group"

    .line 351
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 350
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    .line 358
    :goto_5
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 359
    new-instance v6, Lcom/rami_bar/fun_call/objects/Contact;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->photo_uri:Landroid/net/Uri;

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v6, v9, v10, v1, v0}, Lcom/rami_bar/fun_call/objects/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;)V

    .line 360
    .local v6, "contact":Lcom/rami_bar/fun_call/objects/Contact;
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    .end local v6    # "contact":Lcom/rami_bar/fun_call/objects/Contact;
    .end local v8    # "in_visible_group":Ljava/lang/String;
    .end local v10    # "phone_number":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 319
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 326
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "phone_number":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 327
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 336
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v12    # "photo_id":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->photo_uri:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 338
    .end local v12    # "photo_id":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 339
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 352
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "in_visible_group":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 353
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 359
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v0, 0x0

    goto :goto_6

    .line 366
    .end local v8    # "in_visible_group":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "phone_number":Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private getContactsWithData()V
    .locals 4

    .prologue
    .line 290
    const-string v2, "CASE WHEN display_name NOT LIKE \'%@%\' THEN 1 ELSE 2 END, display_name, data1 COLLATE NOCASE"

    .line 294
    .local v2, "order":Ljava/lang/String;
    const-string v1, "starred LIKE 1"

    .line 296
    .local v1, "filter":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2, v1}, Lcom/rami_bar/fun_call/activities/FragmentSms;->fillListOrderFilter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v2, v3}, Lcom/rami_bar/fun_call/activities/FragmentSms;->fillListOrderFilter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 304
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getViewsIds(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    const v0, 0x7f100184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->ctv_select_all:Landroid/widget/CheckedTextView;

    .line 96
    const v0, 0x7f100185

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->lv_contacts:Landroid/widget/ListView;

    .line 97
    const v0, 0x7f100187

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->bt_send_sms:Landroid/support/design/widget/FloatingActionButton;

    .line 98
    const v0, 0x7f100182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method private handleCallbacks()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->bt_send_sms:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentSms$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentSms$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentSms;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method private handleContacts()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->checkContactsPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getContactsWithData()V

    .line 139
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->setAdapter()V

    .line 141
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->setNumContactsSelected()I

    goto :goto_0
.end method

.method private handleFavorites()V
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/Contact;

    .line 257
    .local v0, "contact":Lcom/rami_bar/fun_call/objects/Contact;
    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/Contact;->isFavorite:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    goto :goto_0

    .line 261
    .end local v0    # "contact":Lcom/rami_bar/fun_call/objects/Contact;
    :cond_1
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_adapter:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

    invoke-virtual {v1}, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;->notifyDataSetChanged()V

    .line 262
    return-void
.end method

.method private sendShare()V
    .locals 8

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0900a0

    invoke-virtual {p0, v6}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/rami_bar/fun_call/utiles/Functions;->startProgressDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 375
    new-instance v4, Lcom/rami_bar/fun_call/objects/send/JsonSendShare;

    invoke-direct {v4}, Lcom/rami_bar/fun_call/objects/send/JsonSendShare;-><init>()V

    .line 376
    .local v4, "send":Lcom/rami_bar/fun_call/objects/send/JsonSendShare;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendShare;->email:Ljava/lang/String;

    .line 377
    const-string v5, "sms"

    iput-object v5, v4, Lcom/rami_bar/fun_call/objects/send/JsonSendShare;->type:Ljava/lang/String;

    .line 379
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v6, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;

    invoke-direct {v6}, Lcom/rami_bar/fun_call/utiles/EncryptionInterceptor;-><init>()V

    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v2

    .line 381
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v5, Lretrofit2/Retrofit$Builder;

    invoke-direct {v5}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v6, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v6

    invoke-virtual {v5, v6}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 382
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v5, Lcom/rami_bar/fun_call/activities/FragmentSms$SendSmsInterface;

    invoke-virtual {v3, v5}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/activities/FragmentSms$SendSmsInterface;

    .line 383
    .local v0, "anInterface":Lcom/rami_bar/fun_call/activities/FragmentSms$SendSmsInterface;
    invoke-interface {v0, v4}, Lcom/rami_bar/fun_call/activities/FragmentSms$SendSmsInterface;->send(Lcom/rami_bar/fun_call/objects/send/JsonSendShare;)Lretrofit2/Call;

    move-result-object v1

    .line 384
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lokhttp3/ResponseBody;>;"
    new-instance v5, Lcom/rami_bar/fun_call/activities/FragmentSms$6;

    invoke-direct {v5, p0}, Lcom/rami_bar/fun_call/activities/FragmentSms$6;-><init>(Lcom/rami_bar/fun_call/activities/FragmentSms;)V

    invoke-interface {v1, v5}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 409
    return-void
.end method

.method private setAdapter()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    new-instance v0, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040078

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_adapter:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

    .line 150
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->lv_contacts:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->lv_contacts:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_adapter:Lcom/rami_bar/fun_call/adapters/ContactFriendAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->lv_contacts:Landroid/widget/ListView;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentSms$2;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentSms$2;-><init>(Lcom/rami_bar/fun_call/activities/FragmentSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->lv_contacts:Landroid/widget/ListView;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentSms$3;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentSms$3;-><init>(Lcom/rami_bar/fun_call/activities/FragmentSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 175
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->ctv_select_all:Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentSms$4;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentSms$4;-><init>(Lcom/rami_bar/fun_call/activities/FragmentSms;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->handleFavorites()V

    goto :goto_0
.end method

.method private setDataToViews()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->handleContacts()V

    .line 104
    return-void
.end method

.method private setNumContactsSelected()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "selected_counter":I
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->contacts_array_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/Contact;

    .line 267
    .local v0, "contact":Lcom/rami_bar/fun_call/objects/Contact;
    iget-object v3, v0, Lcom/rami_bar/fun_call/objects/Contact;->selected:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "contact":Lcom/rami_bar/fun_call/objects/Contact;
    :cond_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d/7"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->bt_send_sms:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2, v7}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 279
    :goto_1
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 280
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 281
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 282
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 283
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->bt_send_sms:Landroid/support/design/widget/FloatingActionButton;

    iget-object v3, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 284
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 286
    return v1

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->tv_counter_temp:Landroid/widget/TextView;

    const v3, 0x7f0900e1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 277
    iget-object v2, p0, Lcom/rami_bar/fun_call/activities/FragmentSms;->bt_send_sms:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2, v8}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v1, 0x7f040041

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getViewsIds(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->setDataToViews()V

    .line 74
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->handleCallbacks()V

    .line 76
    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v6, 0x7f0900bb

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 419
    packed-switch p1, :pswitch_data_0

    .line 453
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 456
    :goto_0
    return-void

    .line 421
    :pswitch_0
    const/4 v0, 0x0

    .line 422
    .local v0, "deniedCounter":I
    array-length v3, p3

    :goto_1
    if-ge v2, v3, :cond_1

    aget v1, p3, v2

    .line 423
    .local v1, "grantResult":I
    if-ne v1, v4, :cond_0

    .line 424
    add-int/lit8 v0, v0, 0x1

    .line 422
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 428
    .end local v1    # "grantResult":I
    :cond_1
    if-lez v0, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 433
    :cond_2
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->handleContacts()V

    goto :goto_0

    .line 437
    .end local v0    # "deniedCounter":I
    :pswitch_1
    const/4 v0, 0x0

    .line 438
    .restart local v0    # "deniedCounter":I
    array-length v3, p3

    :goto_2
    if-ge v2, v3, :cond_4

    aget v1, p3, v2

    .line 439
    .restart local v1    # "grantResult":I
    if-ne v1, v4, :cond_3

    .line 440
    add-int/lit8 v0, v0, 0x1

    .line 438
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 444
    .end local v1    # "grantResult":I
    :cond_4
    if-lez v0, :cond_5

    .line 445
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 449
    :cond_5
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->onSendSMS()V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSendSMS()V
    .locals 9

    .prologue
    const v8, 0x7f0900db

    const/4 v7, 0x1

    .line 204
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->setNumContactsSelected()I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0900de

    invoke-virtual {p0, v5}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/rami_bar/fun_call/utiles/Functions;->canSendSMS(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 214
    :cond_2
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->checkSmsPermission()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0900e3

    invoke-virtual {p0, v5}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/rami_bar/fun_call/utiles/Functions;->startProgressDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
    const v4, 0x7f0900e4

    invoke-virtual {p0, v4}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "smsText":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "smsCantSend":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lcom/rami_bar/fun_call/activities/FragmentSms$5;

    invoke-direct {v3, p0, v2, v1}, Lcom/rami_bar/fun_call/activities/FragmentSms$5;-><init>(Lcom/rami_bar/fun_call/activities/FragmentSms;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v3, "thread_sms":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 246
    sget-object v4, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    const-string v6, "SendSMS"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    const-string v6, "sent"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v3    # "thread_sms":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0900e2

    invoke-virtual {p0, v5}, Lcom/rami_bar/fun_call/activities/FragmentSms;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 249
    sget-object v4, Lcom/rami_bar/fun_call/utiles/MyApp;->tracker:Lcom/google/android/gms/analytics/Tracker;

    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    const-string v6, "SendSMS"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    const-string v6, "failed"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 250
    invoke-static {}, Lcom/rami_bar/fun_call/utiles/Functions;->stopProgressDialog()V

    goto/16 :goto_0
.end method

.class public Lcom/lidroid/xutils/db/sqlite/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;,
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;
    .locals 5

    if-eqz p0, :cond_1

    .line 78
    new-instance v0, Lcom/lidroid/xutils/db/table/DbModel;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/table/DbModel;-><init>()V

    .line 79
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/lidroid/xutils/db/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 30
    :cond_0
    invoke-static {p3, p4}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->setSeq(J)V

    .line 32
    :try_start_0
    invoke-static {p0, p2}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p3

    .line 33
    invoke-virtual {p3}, Lcom/lidroid/xutils/db/table/Table;->getId()Lcom/lidroid/xutils/db/table/Id;

    move-result-object p4

    .line 34
    invoke-virtual {p4}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 36
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {p2, v2}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->get(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 39
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 40
    invoke-virtual {p4, p2, p1, v1}, Lcom/lidroid/xutils/db/table/Id;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    .line 41
    invoke-static {p2, v2}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p4, :cond_3

    .line 60
    iget-object p1, p3, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_2

    return-object p2

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/lidroid/xutils/db/table/Column;

    .line 61
    instance-of p4, p3, Lcom/lidroid/xutils/db/table/Finder;

    if-eqz p4, :cond_1

    .line 62
    check-cast p3, Lcom/lidroid/xutils/db/table/Finder;

    .line 63
    iput-object p0, p3, Lcom/lidroid/xutils/db/table/Finder;->db:Lcom/lidroid/xutils/DbUtils;

    .line 64
    invoke-virtual {p3, p2, v0, v1}, Lcom/lidroid/xutils/db/table/Finder;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    goto :goto_1

    .line 47
    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    iget-object v4, p3, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lidroid/xutils/db/table/Column;

    if-eqz v3, :cond_5

    .line 50
    instance-of v4, v3, Lcom/lidroid/xutils/db/table/Foreign;

    if-eqz v4, :cond_4

    .line 51
    check-cast v3, Lcom/lidroid/xutils/db/table/Foreign;

    .line 52
    iput-object p0, v3, Lcom/lidroid/xutils/db/table/Foreign;->db:Lcom/lidroid/xutils/DbUtils;

    .line 53
    invoke-virtual {v3, p2, p1, v2}, Lcom/lidroid/xutils/db/table/Foreign;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {v3, p2, p1, v2}, Lcom/lidroid/xutils/db/table/Column;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v3

    :catchall_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-object v0
.end method
